.class public final Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment$MilkDownloadServiceConnection;
.super Ljava/lang/Object;
.source "MilkDownloadServiceFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MilkDownloadServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;

    .prologue
    .line 84
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment$MilkDownloadServiceConnection;, "Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment<TT;>.MilkDownloadServiceConnection;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment$MilkDownloadServiceConnection;->this$0:Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 87
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment$MilkDownloadServiceConnection;, "Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment<TT;>.MilkDownloadServiceConnection;"
    const-string v0, "com.samsung.android.app.music.service.milk.downloadservice.MilkDownloadService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment$MilkDownloadServiceConnection;->this$0:Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->onMilkDownloadServiceConnected()V

    .line 90
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 94
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment$MilkDownloadServiceConnection;, "Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment<TT;>.MilkDownloadServiceConnection;"
    const-string v0, "com.samsung.android.app.music.service.milk.downloadservice.MilkDownloadService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment$MilkDownloadServiceConnection;->this$0:Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->onMilkDownloadServiceConnected()V

    .line 97
    :cond_0
    return-void
.end method
