.class public Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;
.super Landroid/widget/EditText;
.source "SoftKeyboardAwareEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText$OnSoftKeyboardListener;
    }
.end annotation


# instance fields
.field private isCursorVisible:Z

.field private mKeyboardListener:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText$OnSoftKeyboardListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->isCursorVisible:Z

    .line 29
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->isCursorVisible:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->isCursorVisible:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->isCursorVisible:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->isCursorVisible:Z

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->isCursorVisible:Z

    .line 40
    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 49
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->mKeyboardListener:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText$OnSoftKeyboardListener;

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    .line 51
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 53
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 57
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->mKeyboardListener:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText$OnSoftKeyboardListener;

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText$OnSoftKeyboardListener;->onDismissed()V

    .line 62
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public isCursorVisible()Z
    .locals 2

    .prologue
    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->isCursorVisible:Z

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->isCursorVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 83
    :try_start_0
    invoke-super {p0}, Landroid/widget/EditText;->performLongClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 86
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCursorVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->isCursorVisible:Z

    .line 68
    invoke-super {p0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 69
    return-void
.end method

.method public setOnSoftKeyboardListener(Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText$OnSoftKeyboardListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText$OnSoftKeyboardListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->mKeyboardListener:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText$OnSoftKeyboardListener;

    .line 45
    return-void
.end method
