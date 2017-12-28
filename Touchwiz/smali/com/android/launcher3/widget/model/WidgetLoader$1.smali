.class Lcom/android/launcher3/widget/model/WidgetLoader$1;
.super Ljava/lang/Object;
.source "WidgetLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/model/WidgetLoader;->getSortedByPackage(Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/model/WidgetLoader;

.field final synthetic val$collector:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/model/WidgetLoader;Ljava/text/Collator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/model/WidgetLoader;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/launcher3/widget/model/WidgetLoader$1;->this$0:Lcom/android/launcher3/widget/model/WidgetLoader;

    iput-object p2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$1;->val$collector:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)I
    .locals 5
    .param p1, "L"    # Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .param p2, "R"    # Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .prologue
    .line 311
    iget-object v4, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v0, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mLabel:Ljava/lang/String;

    .line 312
    .local v0, "left":Ljava/lang/String;
    :goto_0
    iget-object v4, p2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v3, p2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mLabel:Ljava/lang/String;

    .line 313
    .local v3, "right":Ljava/lang/String;
    :goto_1
    instance-of v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 314
    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 315
    .local v1, "pL":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    iget-object v4, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v4, v4, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 316
    iget-object v4, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v0, v4, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 319
    .end local v1    # "pL":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    :cond_0
    instance-of v4, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v4, :cond_1

    move-object v2, p2

    .line 320
    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 321
    .local v2, "pR":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    iget-object v4, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v4, v4, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 322
    iget-object v4, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v3, v4, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 326
    .end local v2    # "pR":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/widget/model/WidgetLoader$1;->val$collector:Ljava/text/Collator;

    invoke-virtual {v4, v0, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4

    .line 311
    .end local v0    # "left":Ljava/lang/String;
    .end local v3    # "right":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    .restart local v0    # "left":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 308
    check-cast p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    check-cast p2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/model/WidgetLoader$1;->compare(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)I

    move-result v0

    return v0
.end method
