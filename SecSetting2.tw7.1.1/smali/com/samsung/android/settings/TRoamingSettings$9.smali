.class Lcom/samsung/android/settings/TRoamingSettings$9;
.super Ljava/lang/Object;
.source "TRoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/TRoamingSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/TRoamingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/TRoamingSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/TRoamingSettings;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/samsung/android/settings/TRoamingSettings$9;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 594
    return-void
.end method
