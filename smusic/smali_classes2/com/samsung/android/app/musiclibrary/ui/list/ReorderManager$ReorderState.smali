.class public Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;
.super Ljava/lang/Object;
.source "ReorderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReorderState"
.end annotation


# instance fields
.field private mEnabled:Z

.field private final mPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->mEnabled:Z

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->mPositions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getReorderedPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->mPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->mPositions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->mEnabled:Z

    return v0
.end method

.method public movePosition(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->mPositions:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 180
    return-void
.end method

.method public resetPositions(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 187
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->mPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->mPositions:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->mEnabled:Z

    .line 172
    return-void
.end method
