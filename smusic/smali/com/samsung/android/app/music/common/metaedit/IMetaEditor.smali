.class public interface abstract Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
.super Ljava/lang/Object;
.source "IMetaEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/metaedit/IMetaEditor$MetaType;
    }
.end annotation


# virtual methods
.method public abstract getBytes(I)[B
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public abstract putBytes(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract putString(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
