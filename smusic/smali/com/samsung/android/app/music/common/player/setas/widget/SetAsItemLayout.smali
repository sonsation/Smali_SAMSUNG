.class public Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;
.source "SetAsItemLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;
    }
.end annotation


# instance fields
.field private mOnCheckChangedListener:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->mOnCheckChangedListener:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->mOnCheckChangedListener:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;->onCheckChanged(IZ)V

    .line 31
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->setChecked(Z)V

    .line 32
    return-void
.end method

.method public setOnCheckChangedListener(Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->mOnCheckChangedListener:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

    .line 36
    return-void
.end method
