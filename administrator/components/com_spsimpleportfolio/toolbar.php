<?php
/**
 * @package     SP Simple Portfolio
 *
 * @copyright   Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.
 * @license     GNU General Public License version 2 or later.
 */

defined('_JEXEC') or die();

class SpsimpleportfolioToolbar extends FOFToolbar{

	function onBrowse()
	{
		JToolBarHelper::preferences('com_spsimpleportfolio');
		parent::onBrowse();
	}
}