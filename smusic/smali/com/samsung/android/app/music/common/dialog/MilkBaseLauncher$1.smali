.class final Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher$1;
.super Ljava/lang/Object;
.source "MilkBaseLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;->checkAccount(Landroid/app/Activity;Ljava/util/HashSet;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher$1;->val$activity:Landroid/app/Activity;

    .line 97
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->launchSamsungAccount(Landroid/content/Context;)Z

    .line 98
    return-void
.end method
