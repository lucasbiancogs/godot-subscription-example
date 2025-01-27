extends Control

@onready var button_1: Button = $Button1
@onready var button_2: Button = $Button2
@onready var button_3: Button = $Button3
@onready var button_4: Button = $Button4

@onready var label: Label = $Labels

var _subscription: Variant = null

func _ready():
	if _subscription == null && ClassDB.class_exists("GodotSubscription"):
		_subscription = ClassDB.instantiate("GodotSubscription")
		_subscription.initialize("<revenue_cat_id>")
		_subscription.connect("productsOutput", _on_signal_2)
		_subscription.connect("purchaseOutput", _on_signal)
		_subscription.connect("entitlementOutput", _on_signal)
		_subscription.connect("presentPaywallOutput", _on_signal)
		button_1.pressed.connect(_on_button_1)
		button_2.pressed.connect(_on_button_2)
		button_3.pressed.connect(_on_button_3)
		button_4.pressed.connect(_on_button_4)
	
func _on_button_1():
	if _subscription:
		_subscription.isEntitlementActive("<entitlement>")

func _on_button_2():
	if _subscription:
		_subscription.listProducts()

func _on_button_3():
	if _subscription:
		_subscription.purchase("<product_id>")

func _on_button_4():
	if _subscription:
		_subscription.presentPaywall()
		
func _on_signal(event):
	label.text = str(event)
	
func _on_signal_2(event, data):
	label.text = "event: " + str(event) + "data: " + str(data)
