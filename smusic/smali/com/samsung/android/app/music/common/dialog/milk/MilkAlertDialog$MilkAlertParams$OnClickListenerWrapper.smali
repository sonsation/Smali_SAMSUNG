.class Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;
.super Ljava/lang/Object;
.source "MilkAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnClickListenerWrapper"
.end annotation


# instance fields
.field final mEventId:Ljava/lang/String;

.field final mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field final mScreenId:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;
    .param p2, "screenId"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p4, "l"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->this$0:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-object p2, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->mScreenId:Ljava/lang/String;

    .line 408
    iput-object p3, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->mEventId:Ljava/lang/String;

    .line 409
    iput-object p4, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 410
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->mScreenId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->mEventId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 415
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->mScreenId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->mEventId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 420
    :cond_1
    return-void
.end method
