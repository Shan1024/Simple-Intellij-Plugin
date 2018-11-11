package org.shan.psi;

import com.intellij.psi.tree.IElementType;
import org.shan.SimpleLanguage;

public class SimpleTokenType extends IElementType {

    public SimpleTokenType(String debugName) {
        super(debugName, SimpleLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "SimpleTokenType." + super.toString();
    }
}
