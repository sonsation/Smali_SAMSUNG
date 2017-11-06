.class public final Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterCompat;
.super Ljava/lang/Object;
.source "SeslLayoutInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterCompat$FactoryWrapper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getFactory(Landroid/view/LayoutInflater;)Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterFactory;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 59
    .local v0, "factory":Landroid/view/LayoutInflater$Factory;
    instance-of v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterCompat$FactoryWrapper;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterCompat$FactoryWrapper;

    .end local v0    # "factory":Landroid/view/LayoutInflater$Factory;
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterCompat$FactoryWrapper;->mDelegateFactory:Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterFactory;

    .line 62
    :goto_0
    return-object v1

    .restart local v0    # "factory":Landroid/view/LayoutInflater$Factory;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setFactory(Landroid/view/LayoutInflater;Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterFactory;)V
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterFactory;

    .prologue
    .line 44
    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterCompat$FactoryWrapper;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterCompat$FactoryWrapper;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterFactory;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 45
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
