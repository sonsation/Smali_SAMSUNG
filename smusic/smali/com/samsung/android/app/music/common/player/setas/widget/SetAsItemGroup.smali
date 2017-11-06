.class public abstract Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;
.super Ljava/lang/Object;
.source "SetAsItemGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UNCHECKED:I = -0x1


# instance fields
.field private final SAVED_STATE_CHECKED_ITEM_ID:Ljava/lang/String;

.field private mCheckChangeListener:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

.field private mCheckedItemId:I

.field private final mSetAsItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAs-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "saved_state_checked_item_id"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->SAVED_STATE_CHECKED_ITEM_ID:Ljava/lang/String;

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mSetAsItems:Landroid/util/SparseArray;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckedItemId:I

    return-void
.end method


# virtual methods
.method public final getCheckedItemId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckedItemId:I

    return v0
.end method

.method public abstract getGroupName()Ljava/lang/String;
.end method

.method public final getItem(I)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mSetAsItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;

    return-object v0
.end method

.method public final isChecked()Z
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckedItemId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isChecked(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 89
    iget v0, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckedItemId:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckedItemId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCheckChanged(IZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 30
    sget-object v1, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - onCheckChanged() - id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", checked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget v1, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckedItemId:I

    if-eq v1, p1, :cond_3

    if-eqz p2, :cond_3

    .line 32
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mSetAsItems:Landroid/util/SparseArray;

    iget v2, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckedItemId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;

    .line 33
    .local v0, "oldCheckedItem":Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    if-eqz v0, :cond_0

    .line 34
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->setChecked(Z)V

    .line 36
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckedItemId:I

    .line 41
    .end local v0    # "oldCheckedItem":Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckChangeListener:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

    if-eqz v1, :cond_2

    .line 42
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckChangeListener:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;->onCheckChanged(IZ)V

    .line 44
    :cond_2
    return-void

    .line 37
    :cond_3
    iget v1, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckedItemId:I

    if-ne v1, p1, :cond_1

    if-nez p2, :cond_1

    .line 38
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckedItemId:I

    goto :goto_0
.end method

.method public final putItem(ILcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;

    .prologue
    .line 47
    invoke-virtual {p2, p0}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->setOnCheckChangedListener(Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;)V

    .line 48
    invoke-virtual {p2, p0}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mSetAsItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "groupName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "saved_state_checked_item_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 66
    .local v0, "checkedItemId":I
    const/4 v2, 0x0

    .line 67
    .local v2, "item":Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    if-eq v0, v5, :cond_0

    .line 68
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mSetAsItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "item":Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    check-cast v2, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;

    .line 69
    .restart local v2    # "item":Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    if-eqz v2, :cond_0

    .line 70
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->setChecked(Z)V

    .line 73
    :cond_0
    sget-object v3, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - restoreInstanceState checked item :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "groupName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "saved_state_checked_item_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckedItemId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    sget-object v1, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - saveInstanceState checked-item-id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckedItemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public final setChecked(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mSetAsItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;

    .line 94
    .local v0, "item":Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->setChecked(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 100
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mSetAsItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 101
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 102
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mSetAsItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->setEnabled(Z)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public final setOnCheckChangedListener(Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->mCheckChangeListener:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

    .line 78
    return-void
.end method
