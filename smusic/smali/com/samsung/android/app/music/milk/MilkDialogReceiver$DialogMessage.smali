.class Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;
.super Ljava/lang/Object;
.source "MilkDialogReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkDialogReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogMessage"
.end annotation


# instance fields
.field mAction:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

.field mBundle:Landroid/os/Bundle;

.field mPathSegment:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/MilkDialogReceiver;
    .param p2, "action"    # Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;
    .param p3, "pathSegment"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->this$0:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->mAction:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    .line 245
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->mPathSegment:Ljava/lang/String;

    .line 246
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->mBundle:Landroid/os/Bundle;

    .line 247
    return-void
.end method


# virtual methods
.method public getAction()Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->mAction:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPathSegment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->mPathSegment:Ljava/lang/String;

    return-object v0
.end method
