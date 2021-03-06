.class public Lcom/samsung/android/graphics/SemImageFilterSet;
.super Lcom/samsung/android/graphics/SemImageFilter;
.source "SemImageFilterSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mImageFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/graphics/SemImageFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/graphics/SemImageFilter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    .line 48
    return-void
.end method


# virtual methods
.method public addAnimation(ILcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)I
    .locals 7
    .param p1, "filterPass"    # I
    .param p2, "listener"    # Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;
    .param p3, "duration"    # J
    .param p5, "delay"    # J
    .param p7, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilter;->addAnimation(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)I

    move-result v0

    return v0
.end method

.method public addAnimation(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)I
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;
    .param p2, "duration"    # J
    .param p4, "delay"    # J
    .param p6, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Use \'int addAnimation(int filterPass, IAnimationListener listener, long duration, long delay, final TimeInterpolator interpolator)\' instead of \'int addAnimation(IAnimationListener listener, long duration, long delay, final TimeInterpolator interpolator)\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I
    .locals 10
    .param p1, "listener"    # Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;
    .param p2, "duration"    # J
    .param p4, "delay"    # J
    .param p6, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v8, v1, [I

    .line 146
    .local v8, "ids":[I
    const/4 v7, -0x1

    .line 147
    .local v7, "i":I
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "im$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    .line 148
    .local v0, "im":Lcom/samsung/android/graphics/SemImageFilter;
    add-int/lit8 v7, v7, 0x1

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilter;->addAnimation(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)I

    move-result v1

    aput v1, v8, v7

    goto :goto_0

    .line 151
    .end local v0    # "im":Lcom/samsung/android/graphics/SemImageFilter;
    :cond_0
    return-object v8
.end method

.method public addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/samsung/android/graphics/SemImageFilter;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->syncImageFilter()V

    .line 77
    :cond_1
    return-void
.end method

.method public clearFilters()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->syncImageFilter()V

    .line 93
    :cond_0
    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/SemImageFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0}, Lcom/samsung/android/graphics/SemImageFilter;->clone()Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilterSet;

    .line 63
    .local v1, "imageFilterSet":Lcom/samsung/android/graphics/SemImageFilterSet;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/SemImageFilter;->clone()Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/SemImageFilterSet;->setView(Landroid/view/View;)V

    .line 67
    return-object v1
.end method

.method public getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    return-object v0
.end method

.method public getFilterCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToView()V
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemImageFilter;->onAttachedToView()V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public onViewSizeChanged()V
    .locals 2

    .prologue
    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemImageFilter;->onViewSizeChanged()V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;)V
    .locals 2
    .param p1, "aListener"    # Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/graphics/SemImageFilter;->setListener(Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/graphics/SemImageFilter;->setView(Landroid/view/View;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method
