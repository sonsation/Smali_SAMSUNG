.class public Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckedLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final ATT_CHECKABLE:Ljava/lang/String; = "checkableId"

.field private static final AUTO_NAME_SPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"


# instance fields
.field private mCheckable:Landroid/widget/Checkable;

.field private final mCheckableId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "checkableId"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->mCheckableId:I

    .line 36
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->mCheckableId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->mCheckable:Landroid/widget/Checkable;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->mCheckableId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->mCheckable:Landroid/widget/Checkable;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 57
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->mCheckableId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->mCheckable:Landroid/widget/Checkable;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedLinearLayout;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 65
    :cond_0
    return-void
.end method
