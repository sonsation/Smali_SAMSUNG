.class public abstract Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;
.super Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
.source "ModeMenuResourceBase.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public findBundle(I)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
