.class final Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;
.super Lcom/android/launcher3/util/ComponentKey;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/model/WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WidgetCacheKey"
.end annotation


# instance fields
.field private final size:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "size"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 717
    iput-object p3, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    .line 718
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 727
    invoke-super {p0, p1}, Lcom/android/launcher3/util/ComponentKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 722
    invoke-super {p0}, Lcom/android/launcher3/util/ComponentKey;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
