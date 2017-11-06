.class public Lcom/samsung/android/app/music/support/sdl/android/widget/AbsListViewSdlCompat;
.super Ljava/lang/Object;
.source "AbsListViewSdlCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsListViewSdlCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsListViewSdlCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPenSelectDragBlockImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v5, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsListViewSdlCompat$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsListViewSdlCompat$1;-><init>(Landroid/content/Context;)V

    .line 52
    .local v5, "twAbsListView":Lcom/sec/android/touchwiz/widget/TwAbsListView;
    const-class v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .line 53
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sec/android/touchwiz/widget/TwAbsListView;>;"
    const/4 v2, 0x0

    .line 55
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    :try_start_0
    const-string v6, "mTwDragBlockImage"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 56
    .local v4, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    .end local v4    # "f":Ljava/lang/reflect/Field;
    :goto_0
    sget-object v6, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsListViewSdlCompat;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPenSelectDragBlockImage() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/support/sdl/android/util/LogSdlCompat;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-object v2

    .line 58
    :catch_0
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v3    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static semEnableGoToTop(Landroid/widget/AbsListView;Z)V
    .locals 2
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDL_INT:I

    const/16 v1, 0x8fe

    if-lt v0, v1, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->semEnableGoToTop(Z)V

    .line 29
    :cond_0
    return-void
.end method

.method public static twSetFluidScrollEnabled(Landroid/widget/AbsListView;Z)V
    .locals 2
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDL_INT:I

    const/16 v1, 0x8fd

    if-lt v0, v1, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->twSetFluidScrollEnabled(Z)V

    .line 39
    :cond_0
    return-void
.end method
