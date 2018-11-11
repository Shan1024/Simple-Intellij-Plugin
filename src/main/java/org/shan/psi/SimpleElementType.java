package org.shan.psi;

import com.intellij.psi.tree.IElementType;
import org.shan.SimpleLanguage;

public class SimpleElementType extends IElementType {

    public SimpleElementType(String debugName) {
        super(debugName, SimpleLanguage.INSTANCE);
    }
}
