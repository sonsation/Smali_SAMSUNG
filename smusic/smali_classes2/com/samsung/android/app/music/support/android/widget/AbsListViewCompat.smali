.class public Lcom/samsung/android/app/music/support/android/widget/AbsListViewCompat;
.super Ljava/lang/Object;
.source "AbsListViewCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/samsung/android/app/music/support/android/widget/AbsListViewCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/android/widget/AbsListViewCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPenSelectDragBlockImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget-boolean v6, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v6, :cond_0

    .line 19
    new-instance v1, Lcom/samsung/android/app/music/support/android/widget/AbsListViewCompat$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/support/android/widget/AbsListViewCompat$1;-><init>(Landroid/content/Context;)V

    .line 29
    .local v1, "absListView":Landroid/widget/AbsListView;
    const-class v2, Landroid/widget/AbsListView;

    .line 30
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/widget/AbsListView;>;"
    const/4 v3, 0x0

    .line 32
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    :try_start_0
    const-string v6, "mSemDragBlockImage"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 33
    .local v5, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 34
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    .end local v5    # "f":Ljava/lang/reflect/Field;
    :goto_0
    sget-object v6, Lcom/samsung/android/app/music/support/android/widget/AbsListViewCompat;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPenSelectDragBlockImage() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/support/android/util/LogCompat;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .end local v1    # "absListView":Landroid/widget/AbsListView;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/widget/AbsListView;>;"
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v3

    .line 35
    .restart local v1    # "absListView":Landroid/widget/AbsListView;
    .restart local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/widget/AbsListView;>;"
    .restart local v3    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    .line 36
    .local v4, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v1    # "absListView":Landroid/widget/AbsListView;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/widget/AbsListView;>;"
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsListViewSdlCompat;->getPenSelectDragBlockImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    .line 35
    .restart local v1    # "absListView":Landroid/widget/AbsListView;
    .restart local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/widget/AbsListView;>;"
    .restart local v3    # "d":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v4

    goto :goto_2
.end method
