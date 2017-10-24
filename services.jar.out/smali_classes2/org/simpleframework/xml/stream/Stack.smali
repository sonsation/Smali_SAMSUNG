.class Lorg/simpleframework/xml/stream/Stack;
.super Ljava/util/ArrayList;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public bottom()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Stack;->size()I

    move-result v0

    .line 89
    if-lez v0, :cond_0

    .line 92
    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/stream/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 90
    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Stack;->size()I

    move-result v0

    .line 57
    if-lez v0, :cond_0

    .line 60
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 58
    return-object v0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/Stack;->add(Ljava/lang/Object;)Z

    .line 106
    return-object p1
.end method

.method public top()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Stack;->size()I

    move-result v0

    .line 73
    if-lez v0, :cond_0

    .line 76
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 74
    return-object v0
.end method
