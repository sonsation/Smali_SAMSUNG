.class Landroid/preference/InfinityColorPickerDialog$1;
.super Ljava/lang/Object;
.source "InfinityColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/InfinityColorPickerDialog;->setColorAndClickAction(Landroid/preference/InfinityColorPickerPanelView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/InfinityColorPickerDialog;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Landroid/preference/InfinityColorPickerDialog;I)V
    .locals 0

    iput-object p1, p0, Landroid/preference/InfinityColorPickerDialog$1;->this$0:Landroid/preference/InfinityColorPickerDialog;

    iput p2, p0, Landroid/preference/InfinityColorPickerDialog$1;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/preference/InfinityColorPickerDialog$1;->this$0:Landroid/preference/InfinityColorPickerDialog;

    invoke-static {v0}, Landroid/preference/InfinityColorPickerDialog;->access$100(Landroid/preference/InfinityColorPickerDialog;)Landroid/preference/InfinityColorPickerView;

    move-result-object v0

    iget v1, p0, Landroid/preference/InfinityColorPickerDialog$1;->val$color:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/preference/InfinityColorPickerView;->setColor(IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
