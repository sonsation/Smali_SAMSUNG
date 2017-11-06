.class Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$1;
.super Ljava/lang/Object;
.source "UpdateApplicationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->access$200(Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;)V

    .line 58
    return-void

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->access$000(Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;)V

    goto :goto_0

    .line 52
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    const-string v1, "com.sec.android.app.music"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->access$100(Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x7f12016e
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
