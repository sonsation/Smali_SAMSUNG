.class final Lcom/samsung/android/app/music/support/android/widget/AbsListViewCompat$1;
.super Landroid/widget/AbsListView;
.source "AbsListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/android/widget/AbsListViewCompat;->getPenSelectDragBlockImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/android/widget/AbsListViewCompat$1;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 27
    return-void
.end method
