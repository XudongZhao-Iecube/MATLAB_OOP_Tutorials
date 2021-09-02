classdef BankAccount < handle
	
    properties (SetAccess = private)
        AccountNumber  % 该属性存储标识帐户的编号。
        AccountBalance  % 该属性存储帐户的当前余额。
    end
    
    properties (Access = ?AccountManager)
        AccountStatus = AccountState.open 
    end
    
    properties (Transient)
        AccountListener
    end
    
    methods 
        function obj = BankAccount(AccountNumber,InitialBalance)
            % 接受帐号和初始余额，以创建表示帐户的对象。
             obj.AccountNumber = AccountNumber;
             obj.AccountBalance = InitialBalance;
             obj.AccountListener =  AccountManager.addAccount(obj);
        end
        
        function deposit(obj,amt)
            obj.AccountBalance = obj.AccountBalance + amt;
            if obj.AccountBalance > 0
                obj.AccountBalance = AccountState.open;
            end
        end
        
        function withdraw(obj,amt)
            if obj.AccountStatus == AccountState.closed && ...
                    obj.AccountBalance < 0
                disp(['Account ',num2str(BA.AccountNumber),...
               ' has been closed.'])
                return
            end
            obj.AccountBalance = obj.AccountBalance - amt;
            if obj.AccountBalance < 0
                notify(obj,'InsufficentFunds');
            end
        end
        
        function getStatement(obj)
            disp('-------------------------')
             disp(['Account: ',num2str(obj.AccountNumber)])
             ab = sprintf('%0.2f',obj.AccountBalance);
             disp(['CurrentBalance: ',ab])
             disp(['Account Status: ',obj.AccountStatus])
             disp('-------------------------')
        end
    end
    
    methods (Static)
        function obj = loadbj(s)
            if isstruct(s)
                accNum = s.AccountNumber;
                initBal = s.AccountBalance;
                obj = BankAccount(accNum,initBal);
             else
                obj.AccountListener = AccountManager.addAccount(s);
             end
        end
    end
    
    events
        InsufficentFunds
    end
end