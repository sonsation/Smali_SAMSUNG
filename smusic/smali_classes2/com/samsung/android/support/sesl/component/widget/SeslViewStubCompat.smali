.class public final Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;
.super Landroid/view/View;
.source "SeslViewStubCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mLayoutResource:I

    .line 58
    sget-object v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslViewStubCompat:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslViewStubCompat_android_inflatedId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflatedId:I

    .line 62
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslViewStubCompat_android_layout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mLayoutResource:I

    .line 64
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslViewStubCompat_android_id:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->setId(I)V

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->setVisibility(I)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->setWillNotDraw(Z)V

    .line 69
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 157
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 153
    return-void
.end method

.method public getInflatedId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflatedId:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mLayoutResource:I

    return v0
.end method

.method public inflate()Landroid/view/View;
    .locals 8

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 196
    .local v5, "viewParent":Landroid/view/ViewParent;
    if-eqz v5, :cond_5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_5

    .line 197
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mLayoutResource:I

    if-eqz v6, :cond_4

    move-object v3, v5

    .line 198
    check-cast v3, Landroid/view/ViewGroup;

    .line 200
    .local v3, "parent":Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v6, :cond_2

    .line 201
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    .line 205
    .local v0, "factory":Landroid/view/LayoutInflater;
    :goto_0
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mLayoutResource:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 208
    .local v4, "view":Landroid/view/View;
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflatedId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 209
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflatedId:I

    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    .line 212
    :cond_0
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 213
    .local v1, "index":I
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 216
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    .line 217
    invoke-virtual {v3, v4, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 222
    :goto_1
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 224
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflateListener:Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat$OnInflateListener;

    if-eqz v6, :cond_1

    .line 225
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflateListener:Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat$OnInflateListener;

    invoke-interface {v6, p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat$OnInflateListener;->onInflate(Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;Landroid/view/View;)V

    .line 228
    :cond_1
    return-object v4

    .line 203
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    .end local v1    # "index":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .restart local v0    # "factory":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 219
    .restart local v1    # "index":I
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 230
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    .end local v1    # "index":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v4    # "view":Landroid/view/View;
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "ViewStub must have a valid layoutResource"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 233
    :cond_5
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->setMeasuredDimension(II)V

    .line 149
    return-void
.end method

.method public setInflatedId(I)V
    .locals 0
    .param p1, "inflatedId"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflatedId:I

    .line 97
    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    .line 137
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResource"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mLayoutResource:I

    .line 129
    return-void
.end method

.method public setOnInflateListener(Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat$OnInflateListener;)V
    .locals 0
    .param p1, "inflateListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat$OnInflateListener;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflateListener:Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat$OnInflateListener;

    .line 247
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 171
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 173
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 176
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setVisibility called on un-referenced view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    if-eqz p1, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewStubCompat;->inflate()Landroid/view/View;

    goto :goto_0
.end method
