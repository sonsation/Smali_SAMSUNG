.class final Lcom/android/launcher3/common/model/DataLoader$2;
.super Ljava/lang/Object;
.source "DataLoader.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cName:Landroid/content/ComponentName;

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/launcher3/common/model/DataLoader$2;->val$cName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/launcher3/common/model/DataLoader$2;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "parent"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 410
    iget-object v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader$2;->val$cName:Landroid/content/ComponentName;

    invoke-virtual {p3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 413
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader$2;->val$cName:Landroid/content/ComponentName;

    invoke-virtual {p3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v1, p0, Lcom/android/launcher3/common/model/DataLoader$2;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
