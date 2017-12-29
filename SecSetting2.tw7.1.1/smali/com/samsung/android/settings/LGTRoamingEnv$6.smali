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
    .line 251
    iput-object p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$6;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 253
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$6;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-set1(Lcom/samsung/android/settings/LGTRoamingEnv;Z)Z

    .line 254
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$6;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-virtual {v1}, Lcom/samsung/android/settings/LGTRoamingEnv;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 256
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 271
    .local v0, "phone":Lcom/android/internal/telephony/ITelephony;
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$6;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v1}, Lcom/samsung/android/settings/LGTRoamingEnv;->-wrap2(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    .line 252
    return-void
.end method
