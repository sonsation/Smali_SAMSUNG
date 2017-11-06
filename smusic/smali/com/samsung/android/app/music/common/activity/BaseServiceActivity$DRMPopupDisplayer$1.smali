.class Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer$1;
.super Ljava/lang/Object;
.source "BaseServiceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer$1;->this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$DRMPopupDisplayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 554
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play()V

    .line 555
    return-void
.end method
