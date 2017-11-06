.class public Lorg/simpleframework/xml/core/TextException;
.super Lorg/simpleframework/xml/core/PersistenceException;
.source "TextException.java"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/Object;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "list"    # [Ljava/lang/Object;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method
