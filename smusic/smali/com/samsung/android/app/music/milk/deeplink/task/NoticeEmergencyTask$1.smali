.class Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask$1;
.super Ljava/lang/Object;
.source "NoticeEmergencyTask.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask$1;->this$0:Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButtonClicked()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onPositiveButtonClicked()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
