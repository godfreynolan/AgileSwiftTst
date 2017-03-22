struct VoidStruct {
    /// Returns or sets Void.
    subscript(key: String) -> Void {
        get { return () }
        set {}
    }
}
