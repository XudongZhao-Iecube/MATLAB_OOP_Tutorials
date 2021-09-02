tb = ToggleButton;
rtt = RespondToToggle(tb);
tb.OnStateChange(true)
tb.OnStateChange(false)

% 对象 rtt 正在侦听由对象 tb 触发的 ToggleState 事件。要删除侦听程序，请对包含侦听程序句柄的属性调用 delete。
delete(rtt.ListenerHandle)