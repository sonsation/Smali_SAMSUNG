.class public interface abstract Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
.super Ljava/lang/Object;
.source "IMilkRunnable.java"


# virtual methods
.method public abstract getRadioService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
.end method

.method public abstract launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract launchDialog(Landroid/app/FragmentManager;Landroid/app/DialogFragment;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract moveToTab(II)V
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)Z
.end method

.method public abstract removeCallbacks(Ljava/lang/Runnable;)V
.end method
