.class Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;
.super Ljava/lang/Object;
.source "Resolver.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/util/Resolver$Stack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TM;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field final synthetic this$1:Lorg/simpleframework/xml/util/Resolver$Stack;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/util/Resolver$Stack;)V
    .locals 1

    .prologue
    .line 376
    .local p0, "this":Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;, "Lorg/simpleframework/xml/util/Resolver<TM;>.Stack.Sequence;"
    iput-object p1, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->this$1:Lorg/simpleframework/xml/util/Resolver$Stack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    invoke-virtual {p1}, Lorg/simpleframework/xml/util/Resolver$Stack;->size()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->cursor:I

    .line 378
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 402
    .local p0, "this":Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;, "Lorg/simpleframework/xml/util/Resolver<TM;>.Stack.Sequence;"
    iget v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->cursor:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 364
    .local p0, "this":Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;, "Lorg/simpleframework/xml/util/Resolver<TM;>.Stack.Sequence;"
    invoke-virtual {p0}, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->next()Lorg/simpleframework/xml/util/Match;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/simpleframework/xml/util/Match;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "this":Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;, "Lorg/simpleframework/xml/util/Resolver<TM;>.Stack.Sequence;"
    invoke-virtual {p0}, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->this$1:Lorg/simpleframework/xml/util/Resolver$Stack;

    iget v1, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->cursor:I

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/util/Resolver$Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/util/Match;

    .line 391
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 411
    .local p0, "this":Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;, "Lorg/simpleframework/xml/util/Resolver<TM;>.Stack.Sequence;"
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->this$1:Lorg/simpleframework/xml/util/Resolver$Stack;

    iget v1, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->cursor:I

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/util/Resolver$Stack;->purge(I)V

    .line 412
    return-void
.end method
