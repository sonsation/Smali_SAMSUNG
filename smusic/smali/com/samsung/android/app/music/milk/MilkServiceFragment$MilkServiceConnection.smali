.class public final Lcom/samsung/android/app/music/milk/MilkServiceFragment$MilkServiceConnection;
.super Ljava/lang/Object;
.source "MilkServiceFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkServiceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MilkServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/MilkServiceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/MilkServiceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/MilkServiceFragment;

    .prologue
    .line 67
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkServiceFragment$MilkServiceConnection;, "Lcom/samsung/android/app/music/milk/MilkServiceFragment<TT;>.MilkServiceConnection;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkServiceFragment$MilkServiceConnection;->this$0:Lcom/samsung/android/app/music/milk/MilkServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 70
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkServiceFragment$MilkServiceConnection;, "Lcom/samsung/android/app/music/milk/MilkServiceFragment<TT;>.MilkServiceConnection;"
    const-string v0, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkServiceFragment$MilkServiceConnection;->this$0:Lcom/samsung/android/app/music/milk/MilkServiceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onMilkServiceConnected()V

    .line 73
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 77
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkServiceFragment$MilkServiceConnection;, "Lcom/samsung/android/app/music/milk/MilkServiceFragment<TT;>.MilkServiceConnection;"
    const-string v0, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkServiceFragment$MilkServiceConnection;->this$0:Lcom/samsung/android/app/music/milk/MilkServiceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onMilkServiceDisconnected()V

    .line 80
    :cond_0
    return-void
.end method
