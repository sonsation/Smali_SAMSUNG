.class Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog$1;
.super Ljava/lang/Object;
.source "PayPromotionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 10
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v9, 0x0

    .line 51
    iget-object v7, p0, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog$1;->val$dialog:Landroid/app/AlertDialog;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 52
    .local v6, "posButton":Landroid/widget/Button;
    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v7, p0, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f020242

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v7, p0, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;

    .line 56
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f11014c

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 55
    invoke-static {v0, v7}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 58
    invoke-virtual {v6, v0, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v7, p0, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog$1;->val$dialog:Landroid/app/AlertDialog;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 63
    .local v1, "negativeButton":Landroid/widget/Button;
    iget-object v7, p0, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog$1;->val$dialog:Landroid/app/AlertDialog;

    const/4 v8, -0x3

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 64
    .local v3, "neturalButton":Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 65
    .local v5, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 66
    .local v2, "negativeButtonIndex":I
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 67
    .local v4, "neturalButtonIndex":I
    if-ge v4, v2, :cond_0

    .line 68
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    invoke-virtual {v5, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 71
    invoke-virtual {v5, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 73
    :cond_0
    return-void
.end method
