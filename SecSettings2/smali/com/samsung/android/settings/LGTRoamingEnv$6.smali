.class Lcom/samsung/android/settings/LGTRoamingEnv$6;
.super Ljava/lang/Object;
.source "LGTRoamingEnv.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/LGTRoamingEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/LGTRoamingEnv;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/LGTRoamingEnv;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$6;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$6;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/LGTRoamingEnv;->-set0(Lcom/samsung/android/settings/LGTRoamingEnv;Z)Z

    .line 243
    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$6;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-virtual {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 245
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 248
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 249
    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$6;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-wrap2(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    .line 241
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$6;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LGTRoamingEnv;->-set1(Lcom/samsung/android/settings/LGTRoamingEnv;Z)Z

    .line 252
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
