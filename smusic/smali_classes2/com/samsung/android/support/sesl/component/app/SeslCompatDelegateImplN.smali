.class Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN;
.super Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23;
.source "SeslCompatDelegateImplN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN$SeslCompatWindowCallbackN;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;)V

    .line 30
    return-void
.end method


# virtual methods
.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 34
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN$SeslCompatWindowCallbackN;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN$SeslCompatWindowCallbackN;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN;Landroid/view/Window$Callback;)V

    return-object v0
.end method
