.class public Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;
.source "SeslPreferenceRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field final mDefaultItemDelegate:Landroid/view/View$AccessibilityDelegate;

.field final mItemDelegate:Landroid/view/View$AccessibilityDelegate;

.field final mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 39
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 51
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate$1;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 44
    return-void
.end method


# virtual methods
.method public getItemDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method
