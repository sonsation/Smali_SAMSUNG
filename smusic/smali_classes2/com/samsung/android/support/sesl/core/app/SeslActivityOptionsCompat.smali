.class public Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
.super Ljava/lang/Object;
.source "SeslActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;,
        Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;,
        Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;
    }
.end annotation


# static fields
.field public static final EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    return-void
.end method

.method public static makeBasic()Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
    .locals 2

    .prologue
    .line 285
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 286
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;

    .line 287
    invoke-static {}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;->makeBasic()Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;)V

    .line 292
    :goto_0
    return-object v0

    .line 288
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 289
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;

    .line 290
    invoke-static {}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->makeBasic()Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;)V

    goto :goto_0

    .line 292
    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 131
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;

    .line 132
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;->makeClipRevealAnimation(Landroid/view/View;IIII)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;)V

    .line 139
    :goto_0
    return-object v0

    .line 134
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 135
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;

    .line 136
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->makeClipRevealAnimation(Landroid/view/View;IIII)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;)V

    goto :goto_0

    .line 139
    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 66
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;

    .line 67
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;->makeCustomAnimation(Landroid/content/Context;II)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;)V

    .line 72
    :goto_0
    return-object v0

    .line 68
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 69
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;

    .line 70
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->makeCustomAnimation(Landroid/content/Context;II)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;)V

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;

    .line 73
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;->makeCustomAnimation(Landroid/content/Context;II)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;)V

    goto :goto_0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 100
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;

    .line 101
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;->makeScaleUpAnimation(Landroid/view/View;IIII)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;)V

    .line 108
    :goto_0
    return-object v0

    .line 103
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 104
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;

    .line 105
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->makeScaleUpAnimation(Landroid/view/View;IIII)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;)V

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;

    .line 109
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;->makeScaleUpAnimation(Landroid/view/View;IIII)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;)V

    goto :goto_0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .prologue
    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 199
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;

    .line 200
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;)V

    .line 207
    :goto_0
    return-object v0

    .line 202
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 203
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;

    .line 204
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;)V

    goto :goto_0

    .line 207
    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;

    .line 208
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;)V

    goto :goto_0
.end method

.method public static varargs makeSceneTransitionAnimation(Landroid/app/Activity;[Lcom/samsung/android/support/sesl/core/util/SeslPair;)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Lcom/samsung/android/support/sesl/core/util/SeslPair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "sharedElements":[Lcom/samsung/android/support/sesl/core/util/SeslPair;, "[Lcom/samsung/android/support/sesl/core/util/SeslPair<Landroid/view/View;Ljava/lang/String;>;"
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, "views":[Landroid/view/View;
    const/4 v1, 0x0

    .line 235
    .local v1, "names":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 236
    array-length v3, p1

    new-array v2, v3, [Landroid/view/View;

    .line 237
    array-length v3, p1

    new-array v1, v3, [Ljava/lang/String;

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 239
    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    aput-object v3, v2, v0

    .line 240
    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "i":I
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    .line 244
    new-instance v3, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;

    .line 245
    invoke-static {p0, v2, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;)V

    .line 254
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "views":[Landroid/view/View;
    :goto_1
    return-object v3

    .line 246
    .restart local v1    # "names":[Ljava/lang/String;
    .restart local v2    # "views":[Landroid/view/View;
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    .line 247
    new-instance v3, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;

    .line 248
    invoke-static {p0, v2, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;)V

    goto :goto_1

    .line 250
    :cond_2
    new-instance v3, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;

    .line 251
    invoke-static {p0, v2, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;)V

    goto :goto_1

    .line 254
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "views":[Landroid/view/View;
    :cond_3
    new-instance v3, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;

    invoke-direct {v3}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;-><init>()V

    goto :goto_1
.end method

.method public static makeTaskLaunchBehind()Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
    .locals 2

    .prologue
    .line 268
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 269
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;

    .line 270
    invoke-static {}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;->makeTaskLaunchBehind()Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;)V

    .line 275
    :goto_0
    return-object v0

    .line 271
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 272
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;

    .line 273
    invoke-static {}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->makeTaskLaunchBehind()Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;)V

    goto :goto_0

    .line 275
    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;

    .line 276
    invoke-static {}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;->makeTaskLaunchBehind()Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;)V

    goto :goto_0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .prologue
    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 164
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;

    .line 165
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;)V

    .line 172
    :goto_0
    return-object v0

    .line 167
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 168
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;

    .line 169
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;)V

    goto :goto_0

    .line 172
    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;

    .line 173
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;)V

    goto :goto_0
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 405
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .prologue
    .line 454
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
    .locals 1
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;)V
    .locals 0
    .param p1, "otherOptions"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;

    .prologue
    .line 426
    return-void
.end method
