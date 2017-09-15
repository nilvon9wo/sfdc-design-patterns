public interface VI_ComputerPartVisitorIntf {
    void visit(VI_Computer computer);
    void visit(VI_Keyboard keyboard);
    void visit(VI_Monitor monitor);
    void visit(VI_Mouse mouse);
}