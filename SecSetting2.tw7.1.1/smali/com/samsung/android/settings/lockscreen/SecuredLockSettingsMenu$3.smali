.class Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$3;
.super Ljava/lang/Object;
.source "SecuredLockSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->showSmartLockDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 599
    return-void
.end method