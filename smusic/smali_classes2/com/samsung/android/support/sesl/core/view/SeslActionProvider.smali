.class public abstract Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;
.super Ljava/lang/Object;
.source "SeslActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$VisibilityListener;,
        Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$SubUiVisibilityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslActionProvider(support)"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubUiVisibilityListener:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$SubUiVisibilityListener;

.field private mVisibilityListener:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$VisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->mContext:Landroid/content/Context;

    .line 142
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p1, "forItem"    # Landroid/view/MenuItem;

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 0
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    .line 270
    return-void
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public refreshVisibility()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->mVisibilityListener:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->mVisibilityListener:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$VisibilityListener;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->isVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    .line 210
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->mVisibilityListener:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$VisibilityListener;

    .line 314
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->mSubUiVisibilityListener:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$SubUiVisibilityListener;

    .line 315
    return-void
.end method

.method public setSubUiVisibilityListener(Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$SubUiVisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$SubUiVisibilityListener;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 290
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->mSubUiVisibilityListener:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$SubUiVisibilityListener;

    .line 291
    return-void
.end method

.method public setVisibilityListener(Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$VisibilityListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$VisibilityListener;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->mVisibilityListener:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 301
    const-string v0, "SeslActionProvider(support)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVisibilityListener: Setting a new SeslActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance while it is still in use somewhere else?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->mVisibilityListener:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$VisibilityListener;

    .line 306
    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->mSubUiVisibilityListener:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$SubUiVisibilityListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->mSubUiVisibilityListener:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$SubUiVisibilityListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    .line 283
    :cond_0
    return-void
.end method
