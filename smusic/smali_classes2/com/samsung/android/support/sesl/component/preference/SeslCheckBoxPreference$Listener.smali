.class Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference$Listener;
.super Ljava/lang/Object;
.source "SeslCheckBoxPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference$Listener;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference$Listener;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference$Listener;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 56
    :goto_1
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference$Listener;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslCheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method
