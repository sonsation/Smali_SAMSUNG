.class Lcom/android/launcher3/executor/StateAppInfo;
.super Ljava/lang/Object;
.source "StateAppInfo.java"

# interfaces
.implements Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field private mName:Ljava/lang/String;

.field private mOrdinalNumber:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mComponentName:Landroid/content/ComponentName;

    .line 30
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mOrdinalNumber:I

    .line 34
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 68
    iput-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mComponentName:Landroid/content/ComponentName;

    .line 69
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/launcher3/executor/StateAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    const-string v0, "\u00a0"

    .line 42
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOrdinalNumber()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mOrdinalNumber:I

    return v0
.end method

.method isValid()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/launcher3/executor/StateAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 109
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setComponentName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/executor/StateAppInfo;->mComponentName:Landroid/content/ComponentName;

    .line 78
    if-eqz p1, :cond_1

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "cnList":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 81
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/StateAppInfo;->mComponentName:Landroid/content/ComponentName;

    .line 88
    .end local v0    # "cnList":[Ljava/lang/String;
    :goto_0
    return-void

    .line 83
    .restart local v0    # "cnList":[Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/executor/StateAppInfo;->mName:Ljava/lang/String;

    goto :goto_0

    .line 86
    .end local v0    # "cnList":[Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/executor/StateAppInfo;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method setItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/launcher3/executor/StateAppInfo;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/executor/StateAppInfo;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/StateAppInfo;->mName:Ljava/lang/String;

    .line 105
    :cond_2
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/launcher3/executor/StateAppInfo;->mName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method setOrdinalNumber(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/launcher3/executor/StateAppInfo;->mOrdinalNumber:I

    .line 73
    return-void
.end method
