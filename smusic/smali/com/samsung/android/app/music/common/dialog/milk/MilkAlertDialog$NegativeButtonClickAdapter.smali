.class public final Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;
.super Ljava/lang/Object;
.source "MilkAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NegativeButtonClickAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;->this$0:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;->this$0:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->access$100(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;->this$0:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->access$100(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 140
    :cond_0
    return-void
.end method
