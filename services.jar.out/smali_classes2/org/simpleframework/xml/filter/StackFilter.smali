.class public Lorg/simpleframework/xml/filter/StackFilter;
.super Ljava/lang/Object;
.source "StackFilter.java"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/simpleframework/xml/filter/Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/filter/StackFilter;->stack:Ljava/util/Stack;

    .line 47
    return-void
.end method


# virtual methods
.method public push(Lorg/simpleframework/xml/filter/Filter;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/simpleframework/xml/filter/StackFilter;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lorg/simpleframework/xml/filter/StackFilter;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-gez v1, :cond_0

    .line 78
    return-object v2

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/filter/StackFilter;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-nez v0, :cond_1

    move v0, v1

    .line 77
    goto :goto_0

    .line 75
    :cond_1
    return-object v0
.end method
