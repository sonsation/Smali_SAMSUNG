.class Lcom/android/launcher3/common/model/AppNameComparator$1;
.super Lcom/android/launcher3/common/model/AbstractUserComparator;
.source "AppNameComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/AppNameComparator;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/common/model/AbstractUserComparator",
        "<",
        "Lcom/android/launcher3/common/base/item/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/AppNameComparator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/AppNameComparator;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/AppNameComparator;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/launcher3/common/model/AppNameComparator$1;->this$0:Lcom/android/launcher3/common/model/AppNameComparator;

    invoke-direct {p0, p2}, Lcom/android/launcher3/common/model/AbstractUserComparator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 5
    .param p1, "a"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "b"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 45
    iget-object v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "aTitle":Ljava/lang/String;
    iget-object v3, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "bTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/common/model/AppNameComparator$1;->this$0:Lcom/android/launcher3/common/model/AppNameComparator;

    invoke-static {v3, v0, v1}, Lcom/android/launcher3/common/model/AppNameComparator;->access$000(Lcom/android/launcher3/common/model/AppNameComparator;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 48
    .local v2, "result":I
    if-nez v2, :cond_0

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v2

    .line 51
    if-nez v2, :cond_0

    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/model/AbstractUserComparator;->compare(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v3

    .line 57
    :goto_0
    return v3

    :cond_0
    move v3, v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast p2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/model/AppNameComparator$1;->compare(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v0

    return v0
.end method
