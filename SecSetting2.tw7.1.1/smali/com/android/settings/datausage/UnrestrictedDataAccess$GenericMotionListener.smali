.class Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;
.super Ljava/lang/Object;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/UnrestrictedDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenericMotionListener"
.end annotation


# instance fields
.field public isEnabled:Z

.field private position:I

.field final synthetic this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;


# direct methods
.method private constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/datausage/UnrestrictedDataAccess;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->isEnabled:Z

    .line 179
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/UnrestrictedDataAccess;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;)V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, 0x2002

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return v4

    .line 188
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-virtual {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->semGetListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    goto :goto_0

    .line 193
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    if-le v1, v3, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-virtual {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 195
    .local v0, "preference":Landroid/preference/Preference;
    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->isEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-virtual {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 196
    :cond_1
    iput v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
