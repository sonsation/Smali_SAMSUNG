.class Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$4;
.super Ljava/lang/Object;
.source "DataCheckDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$4;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$4;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$202(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;Z)Z

    .line 282
    return-void
.end method
