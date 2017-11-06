.class Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
.source "ChildsModel.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChilds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->mChilds:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I
    .locals 1
    .param p1, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;

    .prologue
    .line 11
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->setChild(ILcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I

    move-result v0

    return v0
.end method

.method public copyChildsToArray([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;I)I
    .locals 4
    .param p1, "models"    # [Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    .param p2, "offset"    # I

    .prologue
    .line 32
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    .line 33
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .local v1, "offset":I
    aput-object v0, p1, p2

    move p2, v1

    .line 34
    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0

    .line 35
    .end local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    :cond_0
    return p2
.end method

.method public getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setChild(ILcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;

    .prologue
    .line 15
    invoke-virtual {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->setParent(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;)V

    .line 16
    if-gez p1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 20
    :cond_0
    return p1
.end method
