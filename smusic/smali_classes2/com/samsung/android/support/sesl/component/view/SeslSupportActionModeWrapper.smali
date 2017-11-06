.class public Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;
.super Landroid/view/ActionMode;
.source "SeslSupportActionModeWrapper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportActionMode"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    .line 48
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->finish()V

    .line 78
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->getTitleOptionalHint()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->invalidate()V

    .line 73
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->setCustomView(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->setSubtitle(I)V

    .line 103
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->setTag(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->setTitle(I)V

    .line 93
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->setTitleOptionalHint(Z)V

    .line 128
    return-void
.end method
