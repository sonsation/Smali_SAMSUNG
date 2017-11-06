.class Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "SeslSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$Listener;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$1;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$Listener;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$Listener;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 67
    :goto_1
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference$Listener;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslSwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method
