.class Lcom/sec/android/app/camera/menu/Indicators$1;
.super Ljava/lang/Object;
.source "Indicators.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/Indicators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/Indicators;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/Indicators;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/Indicators$1;->this$0:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators$1;->this$0:Lcom/sec/android/app/camera/menu/Indicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    return-void
.end method
