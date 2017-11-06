.class Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$1;
.super Ljava/lang/Object;
.source "PrivateModeManagerCompat.java"

# interfaces
.implements Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$1;->this$0:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "extInfo"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$1;->this$0:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->access$000(Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;)Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;->onStateChanged(II)V

    .line 60
    return-void
.end method
