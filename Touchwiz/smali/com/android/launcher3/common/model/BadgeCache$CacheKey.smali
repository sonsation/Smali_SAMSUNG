.class public Lcom/android/launcher3/common/model/BadgeCache$CacheKey;
.super Ljava/lang/Object;
.source "BadgeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/BadgeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheKey"
.end annotation


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->componentName:Landroid/content/ComponentName;

    .line 70
    iput-object p2, p0, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 71
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 80
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    if-nez v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 82
    check-cast v0, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    .line 83
    .local v0, "other":Lcom/android/launcher3/common/model/BadgeCache$CacheKey;
    iget-object v2, v0, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->componentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->hashCode()I

    move-result v0

    goto :goto_0
.end method
