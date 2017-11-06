.class public Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout;
.super Landroid/widget/LinearLayout;
.source "WindowFocusLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;
    }
.end annotation


# instance fields
.field private mWindowFocusChangeListener:Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout;->mWindowFocusChangeListener:Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout;->mWindowFocusChangeListener:Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    .line 33
    :cond_0
    return-void
.end method

.method public setOnWindowFocusChangeListener(Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout;->mWindowFocusChangeListener:Lcom/samsung/android/app/music/common/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;

    .line 25
    return-void
.end method
