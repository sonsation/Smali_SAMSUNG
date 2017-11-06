.class Lorg/simpleframework/xml/core/LabelGroup;
.super Ljava/lang/Object;
.source "LabelGroup.java"


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/simpleframework/xml/core/Label;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/core/LabelGroup;->size:I

    .line 64
    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelGroup;->list:Ljava/util/List;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/simpleframework/xml/core/Label;

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/simpleframework/xml/core/Label;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/LabelGroup;-><init>(Ljava/util/List;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelGroup;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPrimary()Lorg/simpleframework/xml/core/Label;
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lorg/simpleframework/xml/core/LabelGroup;->size:I

    if-lez v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelGroup;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
