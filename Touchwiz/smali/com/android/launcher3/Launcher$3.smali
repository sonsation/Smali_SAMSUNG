.class Lcom/android/launcher3/Launcher$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 814
    iput-object p1, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    .line 817
    return-void
.end method
